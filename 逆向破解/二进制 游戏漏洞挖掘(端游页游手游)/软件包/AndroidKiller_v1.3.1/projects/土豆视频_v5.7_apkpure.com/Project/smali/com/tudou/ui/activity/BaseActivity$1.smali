.class Lcom/tudou/ui/activity/BaseActivity$1;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/activity/BaseActivity;->showConfirmDialog(Ljava/lang/String;Lcom/youku/util/IConfirm$Status;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/activity/BaseActivity;

.field final synthetic val$mConfirmDialog:Lcom/youku/widget/TudouDialog;

.field final synthetic val$tag:Lcom/youku/util/IConfirm$Status;


# direct methods
.method constructor <init>(Lcom/tudou/ui/activity/BaseActivity;Lcom/youku/widget/TudouDialog;Lcom/youku/util/IConfirm$Status;)V
    .locals 0

    .prologue
    .line 416
    iput-object p1, p0, Lcom/tudou/ui/activity/BaseActivity$1;->this$0:Lcom/tudou/ui/activity/BaseActivity;

    iput-object p2, p0, Lcom/tudou/ui/activity/BaseActivity$1;->val$mConfirmDialog:Lcom/youku/widget/TudouDialog;

    iput-object p3, p0, Lcom/tudou/ui/activity/BaseActivity$1;->val$tag:Lcom/youku/util/IConfirm$Status;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 419
    iget-object v0, p0, Lcom/tudou/ui/activity/BaseActivity$1;->val$mConfirmDialog:Lcom/youku/widget/TudouDialog;

    invoke-virtual {v0}, Lcom/youku/widget/TudouDialog;->dismiss()V

    .line 420
    iget-object v0, p0, Lcom/tudou/ui/activity/BaseActivity$1;->this$0:Lcom/tudou/ui/activity/BaseActivity;

    iget-object v1, p0, Lcom/tudou/ui/activity/BaseActivity$1;->val$tag:Lcom/youku/util/IConfirm$Status;

    invoke-virtual {v0, v1}, Lcom/tudou/ui/activity/BaseActivity;->confirmExcuter(Lcom/youku/util/IConfirm$Status;)V

    .line 421
    return-void
.end method
