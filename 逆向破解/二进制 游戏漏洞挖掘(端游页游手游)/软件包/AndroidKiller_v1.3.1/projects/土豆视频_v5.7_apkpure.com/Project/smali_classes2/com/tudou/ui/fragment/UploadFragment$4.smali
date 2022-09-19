.class Lcom/tudou/ui/fragment/UploadFragment$4;
.super Ljava/lang/Object;
.source "UploadFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/UploadFragment;->initTitle()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/UploadFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/UploadFragment;)V
    .locals 0

    .prologue
    .line 363
    iput-object p1, p0, Lcom/tudou/ui/fragment/UploadFragment$4;->this$0:Lcom/tudou/ui/fragment/UploadFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 366
    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadFragment$4;->this$0:Lcom/tudou/ui/fragment/UploadFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/UploadFragment;->access$300(Lcom/tudou/ui/fragment/UploadFragment;)Lcom/tudou/ui/activity/BaseActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tudou/ui/activity/BaseActivity;->onBackPressed()V

    .line 367
    return-void
.end method
