.class Lcom/youku/adapter/SearchResultAdapter$22$2;
.super Ljava/lang/Object;
.source "SearchResultAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/adapter/SearchResultAdapter$22;->onFail(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/youku/adapter/SearchResultAdapter$22;


# direct methods
.method constructor <init>(Lcom/youku/adapter/SearchResultAdapter$22;)V
    .locals 0

    .prologue
    .line 1786
    iput-object p1, p0, Lcom/youku/adapter/SearchResultAdapter$22$2;->this$1:Lcom/youku/adapter/SearchResultAdapter$22;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1789
    iget-object v0, p0, Lcom/youku/adapter/SearchResultAdapter$22$2;->this$1:Lcom/youku/adapter/SearchResultAdapter$22;

    iget-object v0, v0, Lcom/youku/adapter/SearchResultAdapter$22;->this$0:Lcom/youku/adapter/SearchResultAdapter;

    invoke-virtual {v0}, Lcom/youku/adapter/SearchResultAdapter;->notifyDataSetChanged()V

    .line 1795
    return-void
.end method
