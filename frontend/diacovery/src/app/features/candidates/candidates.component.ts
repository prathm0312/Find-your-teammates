import { Component, OnInit } from '@angular/core';
import { CommonModule } from '@angular/common';
import { ActivatedRoute, RouterLink } from '@angular/router';
import { LucideAngularModule } from 'lucide-angular';
import { CategoryService } from '../../core/services/api/category.api.service';
import { CandidateService } from '../../core/services/api/candidate.api.service';
import { Candidate, Category } from '../../core/models/api.models';
import { CandidateCardComponent } from '../../shared/components/candidate-card/candidate-card.component';
import { FormsModule } from '@angular/forms';

@Component({
    selector: 'app-candidates',
    standalone: true,
    imports: [CommonModule, RouterLink, LucideAngularModule, CandidateCardComponent, FormsModule],
    templateUrl: './candidates.component.html',
    styleUrls: ['./candidates.component.scss']
})
export class CandidatesComponent implements OnInit {
    candidates: Candidate[] = [];
    categories: Category[] = [];
    selectedCategoryId: string = '';
    searchQuery: string = '';
    sortBy: string = 'rating';
    totalElements: number = 0;
    pageSize: number = 10;
    currentPage: number = 0;

    constructor(
        private categoryService: CategoryService,
        private candidateService: CandidateService,
        private route: ActivatedRoute
    ) { }

    ngOnInit() {
        this.categoryService.getCategories().subscribe(cats => {
            this.categories = cats;
        });

        this.route.queryParams.subscribe(params => {
            this.searchQuery = params['search'] || '';
            this.selectedCategoryId = params['category'] || '';
            const roleId = params['roleId'] || '';
            this.loadCandidates(roleId);
        });
    }

    loadCandidates(roleId: string = '') {
        this.candidateService.getCandidates({
            search: this.searchQuery,
            category: this.selectedCategoryId,
            roleId: roleId,
            sort: this.sortBy,
            page: this.currentPage,
            size: this.pageSize
        }).subscribe(page => {
            this.candidates = page.content;
            this.totalElements = page.totalElements;
        });
    }

    onSortChange() {
        this.currentPage = 0;
        this.loadCandidates();
    }

    onPageChange(page: number) {
        this.currentPage = page;
        this.loadCandidates();
    }

    protected readonly Math = Math;
}
