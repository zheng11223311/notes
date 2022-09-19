.class Lcom/youku/phone/detail/DetailSerisCachePopWindow$12;
.super Ljava/lang/Object;
.source "DetailSerisCachePopWindow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/phone/detail/DetailSerisCachePopWindow;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/phone/detail/DetailSerisCachePopWindow;


# direct methods
.method constructor <init>(Lcom/youku/phone/detail/DetailSerisCachePopWindow;)V
    .locals 0

    .prologue
    .line 914
    iput-object p1, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow$12;->this$0:Lcom/youku/phone/detail/DetailSerisCachePopWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 918
    const-string v1, "onClick"

    invoke-static {v1}, Lcom/youku/util/Util;->isGoOn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 919
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow$12;->this$0:Lcom/youku/phone/detail/DetailSerisCachePopWindow;

    iget-object v1, v1, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->context:Landroid/content/Context;

    const-class v2, Lcom/tudou/ui/activity/CachingListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 921
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow$12;->this$0:Lcom/youku/phone/detail/DetailSerisCachePopWindow;

    iget-object v1, v1, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->context:Landroid/content/Context;

    const/16 v2, 0x1fd

    invoke-static {v1, v0, v2}, Lcom/tudou/android/Youku;->startActivityForResult(Landroid/content/Context;Landroid/content/Intent;I)V

    .line 923
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method
