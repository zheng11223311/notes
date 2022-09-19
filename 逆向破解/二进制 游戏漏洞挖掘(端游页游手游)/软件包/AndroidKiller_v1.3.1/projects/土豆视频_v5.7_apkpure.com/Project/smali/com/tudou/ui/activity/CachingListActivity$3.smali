.class Lcom/tudou/ui/activity/CachingListActivity$3;
.super Ljava/lang/Object;
.source "CachingListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/ui/activity/CachingListActivity;
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
    .line 169
    iput-object p1, p0, Lcom/tudou/ui/activity/CachingListActivity$3;->this$0:Lcom/tudou/ui/activity/CachingListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 173
    iget-object v1, p0, Lcom/tudou/ui/activity/CachingListActivity$3;->this$0:Lcom/tudou/ui/activity/CachingListActivity;

    iget-object v0, p0, Lcom/tudou/ui/activity/CachingListActivity$3;->this$0:Lcom/tudou/ui/activity/CachingListActivity;

    invoke-static {v0}, Lcom/tudou/ui/activity/CachingListActivity;->access$000(Lcom/tudou/ui/activity/CachingListActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/tudou/ui/activity/CachingListActivity;->setEditable(Z)V

    .line 174
    iget-object v0, p0, Lcom/tudou/ui/activity/CachingListActivity$3;->this$0:Lcom/tudou/ui/activity/CachingListActivity;

    iget-object v0, v0, Lcom/tudou/ui/activity/CachingListActivity;->adapter:Lcom/youku/adapter/CachingListAdapter;

    invoke-virtual {v0}, Lcom/youku/adapter/CachingListAdapter;->notifyDataSetChanged()V

    .line 175
    return-void

    .line 173
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
