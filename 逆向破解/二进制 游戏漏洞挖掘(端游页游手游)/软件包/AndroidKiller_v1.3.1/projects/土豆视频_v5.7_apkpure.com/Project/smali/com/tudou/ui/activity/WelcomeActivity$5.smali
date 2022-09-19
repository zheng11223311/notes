.class Lcom/tudou/ui/activity/WelcomeActivity$5;
.super Ljava/lang/Object;
.source "WelcomeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/activity/WelcomeActivity;->showDataflowTipsDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/activity/WelcomeActivity;


# direct methods
.method constructor <init>(Lcom/tudou/ui/activity/WelcomeActivity;)V
    .locals 0

    .prologue
    .line 1297
    iput-object p1, p0, Lcom/tudou/ui/activity/WelcomeActivity$5;->this$0:Lcom/tudou/ui/activity/WelcomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1300
    iget-object v0, p0, Lcom/tudou/ui/activity/WelcomeActivity$5;->this$0:Lcom/tudou/ui/activity/WelcomeActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tudou/ui/activity/WelcomeActivity;->dismissDialog(I)V

    .line 1301
    iget-object v0, p0, Lcom/tudou/ui/activity/WelcomeActivity$5;->this$0:Lcom/tudou/ui/activity/WelcomeActivity;

    invoke-virtual {v0}, Lcom/tudou/ui/activity/WelcomeActivity;->finish()V

    .line 1302
    return-void
.end method
