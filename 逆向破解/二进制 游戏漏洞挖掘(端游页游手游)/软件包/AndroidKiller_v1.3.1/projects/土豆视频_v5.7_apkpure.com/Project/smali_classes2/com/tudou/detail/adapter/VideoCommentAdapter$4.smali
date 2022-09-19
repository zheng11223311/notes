.class Lcom/tudou/detail/adapter/VideoCommentAdapter$4;
.super Ljava/lang/Object;
.source "VideoCommentAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/detail/adapter/VideoCommentAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/detail/adapter/VideoCommentAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/tudou/detail/adapter/VideoCommentAdapter;I)V
    .locals 0

    .prologue
    .line 292
    iput-object p1, p0, Lcom/tudou/detail/adapter/VideoCommentAdapter$4;->this$0:Lcom/tudou/detail/adapter/VideoCommentAdapter;

    iput p2, p0, Lcom/tudou/detail/adapter/VideoCommentAdapter$4;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 295
    iget-object v0, p0, Lcom/tudou/detail/adapter/VideoCommentAdapter$4;->this$0:Lcom/tudou/detail/adapter/VideoCommentAdapter;

    iget-object v0, v0, Lcom/tudou/detail/adapter/VideoCommentAdapter;->mDigClickLis:Lcom/tudou/detail/adapter/VideoCommentAdapter$OnDigClickListener;

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/tudou/detail/adapter/VideoCommentAdapter$4;->this$0:Lcom/tudou/detail/adapter/VideoCommentAdapter;

    iget-object v0, v0, Lcom/tudou/detail/adapter/VideoCommentAdapter;->mDigClickLis:Lcom/tudou/detail/adapter/VideoCommentAdapter$OnDigClickListener;

    iget v1, p0, Lcom/tudou/detail/adapter/VideoCommentAdapter$4;->val$position:I

    invoke-interface {v0, p1, v1}, Lcom/tudou/detail/adapter/VideoCommentAdapter$OnDigClickListener;->onDigPicClick(Landroid/view/View;I)V

    .line 298
    :cond_0
    return-void
.end method
