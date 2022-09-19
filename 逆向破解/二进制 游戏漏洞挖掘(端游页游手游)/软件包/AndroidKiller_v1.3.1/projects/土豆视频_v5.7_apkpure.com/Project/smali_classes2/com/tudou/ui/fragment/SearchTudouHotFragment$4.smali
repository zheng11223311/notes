.class Lcom/tudou/ui/fragment/SearchTudouHotFragment$4;
.super Ljava/lang/Object;
.source "SearchTudouHotFragment.java"

# interfaces
.implements Lcom/tudou/adapter/HotHistoryAdapter$OnHistoryClickListener;


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
    .line 238
    iput-object p1, p0, Lcom/tudou/ui/fragment/SearchTudouHotFragment$4;->this$0:Lcom/tudou/ui/fragment/SearchTudouHotFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHistroyItemClick(ILjava/lang/String;I)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "word"    # Ljava/lang/String;
    .param p3, "pos"    # I

    .prologue
    .line 242
    const-string v0, "toSearch"

    const-wide/16 v2, 0x1f4

    invoke-static {v0, v2, v3}, Lcom/youku/util/Util;->isGoOn(Ljava/lang/String;J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 252
    :goto_0
    return-void

    .line 245
    :cond_0
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v0

    if-nez v0, :cond_1

    .line 246
    const v0, 0x7f0d02c3

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(I)V

    goto :goto_0

    .line 250
    :cond_1
    invoke-static {}, Lcom/tudou/ui/fragment/SearchManager;->getAaid()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tudou/ui/fragment/SearchManager;->aaid:Ljava/lang/String;

    .line 251
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchTudouHotFragment$4;->this$0:Lcom/tudou/ui/fragment/SearchTudouHotFragment;

    invoke-static {v0, p1, p2, p3}, Lcom/tudou/ui/fragment/SearchTudouHotFragment;->access$1100(Lcom/tudou/ui/fragment/SearchTudouHotFragment;ILjava/lang/String;I)V

    goto :goto_0
.end method
