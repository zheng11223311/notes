.class Lcom/tudou/ui/fragment/MyTudouFragment$2;
.super Ljava/lang/Object;
.source "MyTudouFragment.java"

# interfaces
.implements Lcom/tudou/ui/activity/HomePageActivity$OnBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/ui/fragment/MyTudouFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/MyTudouFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/MyTudouFragment;)V
    .locals 0

    .prologue
    .line 225
    iput-object p1, p0, Lcom/tudou/ui/fragment/MyTudouFragment$2;->this$0:Lcom/tudou/ui/fragment/MyTudouFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickBackListener()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 228
    iget-object v1, p0, Lcom/tudou/ui/fragment/MyTudouFragment$2;->this$0:Lcom/tudou/ui/fragment/MyTudouFragment;

    invoke-virtual {v1}, Lcom/tudou/ui/fragment/MyTudouFragment;->isEdit()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 229
    iget-object v1, p0, Lcom/tudou/ui/fragment/MyTudouFragment$2;->this$0:Lcom/tudou/ui/fragment/MyTudouFragment;

    new-instance v2, Landroid/view/View;

    iget-object v3, p0, Lcom/tudou/ui/fragment/MyTudouFragment$2;->this$0:Lcom/tudou/ui/fragment/MyTudouFragment;

    invoke-virtual {v3}, Lcom/tudou/ui/fragment/MyTudouFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0, v2}, Lcom/tudou/ui/fragment/MyTudouFragment;->setEdit(ZLandroid/view/View;)V

    .line 230
    const/4 v0, 0x1

    .line 232
    :cond_0
    return v0
.end method
