.class Lcom/tudou/ui/activity/CachingListActivity$2;
.super Ljava/lang/Object;
.source "CachingListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/activity/CachingListActivity;->initTitle()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/activity/CachingListActivity;


# direct methods
.method constructor <init>(Lcom/tudou/ui/activity/CachingListActivity;)V
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Lcom/tudou/ui/activity/CachingListActivity$2;->this$0:Lcom/tudou/ui/activity/CachingListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 159
    iget-object v0, p0, Lcom/tudou/ui/activity/CachingListActivity$2;->this$0:Lcom/tudou/ui/activity/CachingListActivity;

    invoke-virtual {v0}, Lcom/tudou/ui/activity/CachingListActivity;->getEditable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/tudou/ui/activity/CachingListActivity$2;->this$0:Lcom/tudou/ui/activity/CachingListActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tudou/ui/activity/CachingListActivity;->setEditable(Z)V

    .line 164
    :goto_0
    return-void

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/tudou/ui/activity/CachingListActivity$2;->this$0:Lcom/tudou/ui/activity/CachingListActivity;

    invoke-virtual {v0}, Lcom/tudou/ui/activity/CachingListActivity;->finish()V

    goto :goto_0
.end method
