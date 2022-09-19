.class Lcom/youku/adapter/SearchResultAdapter$24$2;
.super Ljava/lang/Object;
.source "SearchResultAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/adapter/SearchResultAdapter$24;->onFail(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/youku/adapter/SearchResultAdapter$24;


# direct methods
.method constructor <init>(Lcom/youku/adapter/SearchResultAdapter$24;)V
    .locals 0

    .prologue
    .line 1862
    iput-object p1, p0, Lcom/youku/adapter/SearchResultAdapter$24$2;->this$1:Lcom/youku/adapter/SearchResultAdapter$24;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1865
    iget-object v0, p0, Lcom/youku/adapter/SearchResultAdapter$24$2;->this$1:Lcom/youku/adapter/SearchResultAdapter$24;

    iget-object v0, v0, Lcom/youku/adapter/SearchResultAdapter$24;->this$0:Lcom/youku/adapter/SearchResultAdapter;

    invoke-virtual {v0}, Lcom/youku/adapter/SearchResultAdapter;->notifyDataSetChanged()V

    .line 1871
    return-void
.end method
