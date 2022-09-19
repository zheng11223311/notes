.class Lcom/tudou/detail/widget/CommentUserContentSwitcher$CommentItemHolder;
.super Ljava/lang/Object;
.source "CommentUserContentSwitcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/detail/widget/CommentUserContentSwitcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CommentItemHolder"
.end annotation


# instance fields
.field mContent:Landroid/widget/TextView;

.field mType:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/tudou/detail/widget/CommentUserContentSwitcher;


# direct methods
.method public constructor <init>(Lcom/tudou/detail/widget/CommentUserContentSwitcher;Landroid/view/View;)V
    .locals 1
    .param p2, "v"    # Landroid/view/View;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/tudou/detail/widget/CommentUserContentSwitcher$CommentItemHolder;->this$0:Lcom/tudou/detail/widget/CommentUserContentSwitcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const v0, 0x7f0c030b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/detail/widget/CommentUserContentSwitcher$CommentItemHolder;->mType:Landroid/widget/TextView;

    .line 29
    const v0, 0x7f0c030c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/detail/widget/CommentUserContentSwitcher$CommentItemHolder;->mContent:Landroid/widget/TextView;

    .line 30
    return-void
.end method
