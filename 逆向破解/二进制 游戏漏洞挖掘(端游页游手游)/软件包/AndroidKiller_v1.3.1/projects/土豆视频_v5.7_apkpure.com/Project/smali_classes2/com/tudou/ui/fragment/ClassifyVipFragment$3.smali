.class Lcom/tudou/ui/fragment/ClassifyVipFragment$3;
.super Ljava/lang/Object;
.source "ClassifyVipFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/ClassifyVipFragment;->eventView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/ClassifyVipFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/ClassifyVipFragment;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/tudou/ui/fragment/ClassifyVipFragment$3;->this$0:Lcom/tudou/ui/fragment/ClassifyVipFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyVipFragment$3;->this$0:Lcom/tudou/ui/fragment/ClassifyVipFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ClassifyVipFragment;->access$000(Lcom/tudou/ui/fragment/ClassifyVipFragment;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 95
    return-void
.end method
