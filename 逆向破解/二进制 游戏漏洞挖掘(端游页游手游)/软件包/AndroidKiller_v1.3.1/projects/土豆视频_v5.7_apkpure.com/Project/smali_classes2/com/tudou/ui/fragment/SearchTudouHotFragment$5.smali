.class Lcom/tudou/ui/fragment/SearchTudouHotFragment$5;
.super Ljava/lang/Object;
.source "SearchTudouHotFragment.java"

# interfaces
.implements Lcom/tudou/adapter/HotHistoryAdapter$OnClearListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/ui/fragment/SearchTudouHotFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/SearchTudouHotFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/SearchTudouHotFragment;)V
    .locals 0

    .prologue
    .line 258
    iput-object p1, p0, Lcom/tudou/ui/fragment/SearchTudouHotFragment$5;->this$0:Lcom/tudou/ui/fragment/SearchTudouHotFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClear()V
    .locals 2

    .prologue
    .line 261
    invoke-static {}, Lcom/youku/data/SQLiteManagerTudou;->dropSearchHistory()V

    .line 262
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchTudouHotFragment$5;->this$0:Lcom/tudou/ui/fragment/SearchTudouHotFragment;

    iget-object v0, v0, Lcom/tudou/ui/fragment/SearchTudouHotFragment;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchTudouHotFragment$5;->this$0:Lcom/tudou/ui/fragment/SearchTudouHotFragment;

    iget-object v0, v0, Lcom/tudou/ui/fragment/SearchTudouHotFragment;->handler:Landroid/os/Handler;

    const/16 v1, 0x71

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 264
    :cond_0
    return-void
.end method
