.class Lcom/tudou/ui/activity/WelcomeActivity$2;
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
    .line 848
    iput-object p1, p0, Lcom/tudou/ui/activity/WelcomeActivity$2;->this$0:Lcom/tudou/ui/activity/WelcomeActivity;

    iput-object p2, p0, Lcom/tudou/ui/activity/WelcomeActivity$2;->val$ab:Lcom/youku/widget/TudouDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 851
    iget-object v0, p0, Lcom/tudou/ui/activity/WelcomeActivity$2;->val$ab:Lcom/youku/widget/TudouDialog;

    invoke-virtual {v0}, Lcom/youku/widget/TudouDialog;->dismiss()V

    .line 852
    iget-object v0, p0, Lcom/tudou/ui/activity/WelcomeActivity$2;->this$0:Lcom/tudou/ui/activity/WelcomeActivity;

    invoke-virtual {v0}, Lcom/tudou/ui/activity/WelcomeActivity;->finish()V

    .line 853
    return-void
.end method
