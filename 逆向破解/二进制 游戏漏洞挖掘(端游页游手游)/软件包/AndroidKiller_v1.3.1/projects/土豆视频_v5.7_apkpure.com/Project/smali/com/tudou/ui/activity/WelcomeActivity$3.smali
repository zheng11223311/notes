.class Lcom/tudou/ui/activity/WelcomeActivity$3;
.super Ljava/lang/Object;
.source "WelcomeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/activity/WelcomeActivity;->stateJudge()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/activity/WelcomeActivity;

.field final synthetic val$ab:Lcom/youku/widget/TudouDialog;


# direct methods
.method constructor <init>(Lcom/tudou/ui/activity/WelcomeActivity;Lcom/youku/widget/TudouDialog;)V
    .locals 0

    .prologue
    .line 865
    iput-object p1, p0, Lcom/tudou/ui/activity/WelcomeActivity$3;->this$0:Lcom/tudou/ui/activity/WelcomeActivity;

    iput-object p2, p0, Lcom/tudou/ui/activity/WelcomeActivity$3;->val$ab:Lcom/youku/widget/TudouDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 869
    iget-object v0, p0, Lcom/tudou/ui/activity/WelcomeActivity$3;->val$ab:Lcom/youku/widget/TudouDialog;

    invoke-virtual {v0}, Lcom/youku/widget/TudouDialog;->dismiss()V

    .line 870
    const-string v0, "isNeedalert"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tudou/android/Youku;->savePreference(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 871
    iget-object v0, p0, Lcom/tudou/ui/activity/WelcomeActivity$3;->this$0:Lcom/tudou/ui/activity/WelcomeActivity;

    invoke-static {v0}, Lcom/tudou/ui/activity/WelcomeActivity;->access$1500(Lcom/tudou/ui/activity/WelcomeActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tudou/ui/activity/WelcomeActivity$3;->this$0:Lcom/tudou/ui/activity/WelcomeActivity;

    invoke-static {v0}, Lcom/youku/util/Util;->issave(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 872
    iget-object v0, p0, Lcom/tudou/ui/activity/WelcomeActivity$3;->this$0:Lcom/tudou/ui/activity/WelcomeActivity;

    invoke-static {v0}, Lcom/tudou/ui/activity/WelcomeActivity;->access$1600(Lcom/tudou/ui/activity/WelcomeActivity;)V

    .line 874
    :cond_0
    return-void
.end method
