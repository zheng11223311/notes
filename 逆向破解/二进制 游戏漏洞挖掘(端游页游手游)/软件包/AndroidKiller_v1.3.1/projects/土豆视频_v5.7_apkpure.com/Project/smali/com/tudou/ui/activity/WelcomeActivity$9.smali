.class Lcom/tudou/ui/activity/WelcomeActivity$9;
.super Ljava/lang/Object;
.source "WelcomeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/activity/WelcomeActivity;->showKnowMore()V
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
    .line 1648
    iput-object p1, p0, Lcom/tudou/ui/activity/WelcomeActivity$9;->this$0:Lcom/tudou/ui/activity/WelcomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1651
    iget-object v0, p0, Lcom/tudou/ui/activity/WelcomeActivity$9;->this$0:Lcom/tudou/ui/activity/WelcomeActivity;

    invoke-static {v0}, Lcom/tudou/ui/activity/WelcomeActivity;->access$2300(Lcom/tudou/ui/activity/WelcomeActivity;)V

    .line 1652
    return-void
.end method
