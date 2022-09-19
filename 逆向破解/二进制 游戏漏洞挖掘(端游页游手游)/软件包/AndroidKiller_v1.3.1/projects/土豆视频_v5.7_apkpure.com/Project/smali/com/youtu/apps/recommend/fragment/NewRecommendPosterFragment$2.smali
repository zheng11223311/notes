.class Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment$2;
.super Ljava/lang/Object;
.source "NewRecommendPosterFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment;->initPoster()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment;

.field final synthetic val$count:I


# direct methods
.method constructor <init>(Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment;I)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment$2;->this$0:Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment;

    iput p2, p0, Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment$2;->val$count:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 129
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    :try_start_0
    iget-object v1, p0, Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment$2;->this$0:Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment;

    invoke-static {v1}, Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment;->access$300(Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment;)[Landroid/widget/ImageView;

    move-result-object v2

    iget v1, p0, Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment$2;->val$count:I

    rem-int v1, p3, v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment$2;->val$count:I

    add-int/lit8 v1, v1, -0x1

    :goto_0
    aget-object v1, v2, v1

    sget v2, Lcom/youtu/apps/R$drawable;->recommend_newrecommend_point_normal:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 132
    iget-object v1, p0, Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment$2;->this$0:Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment;

    invoke-static {v1}, Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment;->access$300(Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment;)[Landroid/widget/ImageView;

    move-result-object v2

    iget v1, p0, Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment$2;->val$count:I

    rem-int v1, p3, v1

    iget v3, p0, Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment$2;->val$count:I

    add-int/lit8 v3, v3, -0x1

    if-ne v1, v3, :cond_1

    const/4 v1, 0x0

    :goto_1
    aget-object v1, v2, v1

    sget v2, Lcom/youtu/apps/R$drawable;->recommend_newrecommend_point_normal:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 135
    iget-object v1, p0, Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment$2;->this$0:Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment;

    invoke-static {v1}, Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment;->access$300(Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment;)[Landroid/widget/ImageView;

    move-result-object v1

    iget v2, p0, Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment$2;->val$count:I

    rem-int v2, p3, v2

    aget-object v1, v1, v2

    sget v2, Lcom/youtu/apps/R$drawable;->recommend_newrecommend_point_selected:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 141
    :goto_2
    return-void

    .line 129
    :cond_0
    iget v1, p0, Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment$2;->val$count:I

    rem-int v1, p3, v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 132
    :cond_1
    iget v1, p0, Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment$2;->val$count:I

    rem-int v1, p3, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 137
    :catch_0
    move-exception v0

    .line 139
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 144
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
