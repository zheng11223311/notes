.class Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment$2;
.super Ljava/lang/Object;
.source "ClassifySelectedResultsForVIPFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;)V
    .locals 0

    .prologue
    .line 288
    iput-object p1, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment$2;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 291
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment$2;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->access$1700(Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;)Lcom/tudou/ui/activity/BaseActivity;

    move-result-object v1

    const-class v2, Lcom/tudou/ui/activity/MyTicketsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 292
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment$2;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->access$1800(Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;)Lcom/tudou/ui/activity/BaseActivity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/tudou/android/Youku;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 293
    return-void
.end method
