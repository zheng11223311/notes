.class Lcom/tudou/adapter/IndexPageAdapter$3;
.super Ljava/lang/Object;
.source "IndexPageAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/adapter/IndexPageAdapter;->initChannel(Lcom/tudou/adapter/IndexChannelItem;Lcom/youku/vo/IndexPageItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/adapter/IndexPageAdapter;


# direct methods
.method constructor <init>(Lcom/tudou/adapter/IndexPageAdapter;)V
    .locals 0

    .prologue
    .line 475
    iput-object p1, p0, Lcom/tudou/adapter/IndexPageAdapter$3;->this$0:Lcom/tudou/adapter/IndexPageAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 478
    invoke-static {}, Lcom/tudou/service/classify/ClassifyManager;->getInstance()Lcom/tudou/service/classify/Classify;

    move-result-object v0

    iget-object v1, p0, Lcom/tudou/adapter/IndexPageAdapter$3;->this$0:Lcom/tudou/adapter/IndexPageAdapter;

    invoke-static {v1}, Lcom/tudou/adapter/IndexPageAdapter;->access$000(Lcom/tudou/adapter/IndexPageAdapter;)Landroid/app/Activity;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tudou/service/classify/Classify;->goClassifyHome(Landroid/content/Context;)V

    .line 480
    const-string v0, "t1.home_shome.category"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 481
    return-void
.end method
