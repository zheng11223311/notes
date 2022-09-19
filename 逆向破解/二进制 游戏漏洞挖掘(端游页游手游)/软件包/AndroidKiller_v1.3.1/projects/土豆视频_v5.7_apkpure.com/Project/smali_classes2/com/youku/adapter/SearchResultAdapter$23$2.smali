.class Lcom/youku/adapter/SearchResultAdapter$23$2;
.super Ljava/lang/Object;
.source "SearchResultAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/adapter/SearchResultAdapter$23;->onFail(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/youku/adapter/SearchResultAdapter$23;


# direct methods
.method constructor <init>(Lcom/youku/adapter/SearchResultAdapter$23;)V
    .locals 0

    .prologue
    .line 1824
    iput-object p1, p0, Lcom/youku/adapter/SearchResultAdapter$23$2;->this$1:Lcom/youku/adapter/SearchResultAdapter$23;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1827
    iget-object v0, p0, Lcom/youku/adapter/SearchResultAdapter$23$2;->this$1:Lcom/youku/adapter/SearchResultAdapter$23;

    iget-object v0, v0, Lcom/youku/adapter/SearchResultAdapter$23;->this$0:Lcom/youku/adapter/SearchResultAdapter;

    invoke-virtual {v0}, Lcom/youku/adapter/SearchResultAdapter;->notifyDataSetChanged()V

    .line 1828
    const v0, 0x7f0d01e0

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(I)V

    .line 1829
    return-void
.end method
