.class Lcom/tudou/ui/activity/HomePageActivity$6;
.super Ljava/lang/Object;
.source "HomePageActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/activity/HomePageActivity;->showForceUpdateDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/activity/HomePageActivity;


# direct methods
.method constructor <init>(Lcom/tudou/ui/activity/HomePageActivity;)V
    .locals 0

    .prologue
    .line 999
    iput-object p1, p0, Lcom/tudou/ui/activity/HomePageActivity$6;->this$0:Lcom/tudou/ui/activity/HomePageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1002
    iget-object v0, p0, Lcom/tudou/ui/activity/HomePageActivity$6;->this$0:Lcom/tudou/ui/activity/HomePageActivity;

    invoke-virtual {v0}, Lcom/tudou/ui/activity/HomePageActivity;->finish()V

    .line 1003
    invoke-static {}, Lcom/tudou/android/Youku;->exit()V

    .line 1004
    return-void
.end method
