.class Lcom/tudou/ui/fragment/SearchTudouHotFragment$7;
.super Ljava/lang/Object;
.source "SearchTudouHotFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 378
    iput-object p1, p0, Lcom/tudou/ui/fragment/SearchTudouHotFragment$7;->this$0:Lcom/tudou/ui/fragment/SearchTudouHotFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 382
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v0

    if-nez v0, :cond_0

    .line 383
    const v0, 0x7f0d02c3

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(I)V

    .line 388
    :goto_0
    return-void

    .line 386
    :cond_0
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchTudouHotFragment$7;->this$0:Lcom/tudou/ui/fragment/SearchTudouHotFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/SearchTudouHotFragment;->access$1200(Lcom/tudou/ui/fragment/SearchTudouHotFragment;)V

    .line 387
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchTudouHotFragment$7;->this$0:Lcom/tudou/ui/fragment/SearchTudouHotFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/SearchTudouHotFragment;->access$1300(Lcom/tudou/ui/fragment/SearchTudouHotFragment;)V

    goto :goto_0
.end method
