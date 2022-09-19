.class Lcom/youku/adapter/AccountAdapter$6;
.super Ljava/lang/Object;
.source "AccountAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/adapter/AccountAdapter;->setDownloadingItemOnClickListener(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/adapter/AccountAdapter;


# direct methods
.method constructor <init>(Lcom/youku/adapter/AccountAdapter;)V
    .locals 0

    .prologue
    .line 497
    iput-object p1, p0, Lcom/youku/adapter/AccountAdapter$6;->this$0:Lcom/youku/adapter/AccountAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 500
    const-string v1, "account_click_key"

    const-wide/16 v2, 0x12c

    invoke-static {v1, v2, v3}, Lcom/youku/util/Util;->isGoOn(Ljava/lang/String;J)Z

    move-result v1

    if-nez v1, :cond_0

    .line 506
    :goto_0
    return-void

    .line 503
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/youku/adapter/AccountAdapter$6;->this$0:Lcom/youku/adapter/AccountAdapter;

    invoke-static {v1}, Lcom/youku/adapter/AccountAdapter;->access$200(Lcom/youku/adapter/AccountAdapter;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/tudou/ui/activity/CacheActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 504
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "cache_tab"

    const-string v2, "caching_tab"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 505
    iget-object v1, p0, Lcom/youku/adapter/AccountAdapter$6;->this$0:Lcom/youku/adapter/AccountAdapter;

    invoke-static {v1}, Lcom/youku/adapter/AccountAdapter;->access$200(Lcom/youku/adapter/AccountAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/tudou/android/Youku;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0
.end method
