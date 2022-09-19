.class Lcom/youku/adapter/CacheListAdapter$2;
.super Ljava/lang/Object;
.source "CacheListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/adapter/CacheListAdapter;->setCacheHeaderView(Ljava/lang/String;ZLandroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/adapter/CacheListAdapter;


# direct methods
.method constructor <init>(Lcom/youku/adapter/CacheListAdapter;)V
    .locals 0

    .prologue
    .line 287
    iput-object p1, p0, Lcom/youku/adapter/CacheListAdapter$2;->this$0:Lcom/youku/adapter/CacheListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 291
    const-string v0, "cacheedit"

    invoke-static {v0}, Lcom/youku/util/Util;->isGoOn(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 295
    :goto_0
    return-void

    .line 294
    :cond_0
    iget-object v0, p0, Lcom/youku/adapter/CacheListAdapter$2;->this$0:Lcom/youku/adapter/CacheListAdapter;

    iget-object v1, v0, Lcom/youku/adapter/CacheListAdapter;->onSetEditListener:Lcom/youku/adapter/CacheListAdapter$OnSetEditListener;

    iget-object v0, p0, Lcom/youku/adapter/CacheListAdapter$2;->this$0:Lcom/youku/adapter/CacheListAdapter;

    invoke-static {v0}, Lcom/youku/adapter/CacheListAdapter;->access$100(Lcom/youku/adapter/CacheListAdapter;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-interface {v1, v0, p1}, Lcom/youku/adapter/CacheListAdapter$OnSetEditListener;->setEditListener(ZLandroid/view/View;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
