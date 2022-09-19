.class Lcom/tudou/ui/fragment/UploadingFragment$2;
.super Ljava/lang/Object;
.source "UploadingFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/UploadingFragment;->initTitle()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/UploadingFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/UploadingFragment;)V
    .locals 0

    .prologue
    .line 255
    iput-object p1, p0, Lcom/tudou/ui/fragment/UploadingFragment$2;->this$0:Lcom/tudou/ui/fragment/UploadingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 258
    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadingFragment$2;->this$0:Lcom/tudou/ui/fragment/UploadingFragment;

    invoke-virtual {v0}, Lcom/tudou/ui/fragment/UploadingFragment;->getBaseActivity()Lcom/tudou/ui/activity/BaseActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tudou/ui/activity/BaseActivity;->finish()V

    .line 259
    return-void
.end method
