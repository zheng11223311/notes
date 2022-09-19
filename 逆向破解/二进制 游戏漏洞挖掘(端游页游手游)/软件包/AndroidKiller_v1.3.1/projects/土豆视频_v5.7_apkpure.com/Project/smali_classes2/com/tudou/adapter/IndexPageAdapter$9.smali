.class Lcom/tudou/adapter/IndexPageAdapter$9;
.super Ljava/lang/Object;
.source "IndexPageAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/adapter/IndexPageAdapter;->initNotify(Lcom/tudou/adapter/IndexNotifyItem;Lcom/youku/vo/IndexPageItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/adapter/IndexPageAdapter;

.field final synthetic val$aNotifyItem:Lcom/tudou/adapter/IndexNotifyItem;


# direct methods
.method constructor <init>(Lcom/tudou/adapter/IndexPageAdapter;Lcom/tudou/adapter/IndexNotifyItem;)V
    .locals 0

    .prologue
    .line 670
    iput-object p1, p0, Lcom/tudou/adapter/IndexPageAdapter$9;->this$0:Lcom/tudou/adapter/IndexPageAdapter;

    iput-object p2, p0, Lcom/tudou/adapter/IndexPageAdapter$9;->val$aNotifyItem:Lcom/tudou/adapter/IndexNotifyItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 674
    iget-object v0, p0, Lcom/tudou/adapter/IndexPageAdapter$9;->this$0:Lcom/tudou/adapter/IndexPageAdapter;

    iget-object v1, p0, Lcom/tudou/adapter/IndexPageAdapter$9;->val$aNotifyItem:Lcom/tudou/adapter/IndexNotifyItem;

    invoke-virtual {v0, v1}, Lcom/tudou/adapter/IndexPageAdapter;->deleteNotify(Lcom/tudou/adapter/IndexNotifyItem;)V

    .line 676
    const-string v0, "t1.home_shome.promtcolse"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 677
    return-void
.end method
