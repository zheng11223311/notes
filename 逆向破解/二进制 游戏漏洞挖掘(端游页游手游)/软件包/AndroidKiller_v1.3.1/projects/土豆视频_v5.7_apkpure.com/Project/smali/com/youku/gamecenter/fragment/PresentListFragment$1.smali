.class Lcom/youku/gamecenter/fragment/PresentListFragment$1;
.super Ljava/lang/Object;
.source "PresentListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/gamecenter/fragment/PresentListFragment;->updateDatas(Lcom/youku/gamecenter/present/PresentListInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/gamecenter/fragment/PresentListFragment;


# direct methods
.method constructor <init>(Lcom/youku/gamecenter/fragment/PresentListFragment;)V
    .locals 0

    .prologue
    .line 174
    iput-object p1, p0, Lcom/youku/gamecenter/fragment/PresentListFragment$1;->this$0:Lcom/youku/gamecenter/fragment/PresentListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/youku/gamecenter/fragment/PresentListFragment$1;->this$0:Lcom/youku/gamecenter/fragment/PresentListFragment;

    invoke-static {v0}, Lcom/youku/gamecenter/fragment/PresentListFragment;->access$000(Lcom/youku/gamecenter/fragment/PresentListFragment;)Lcom/youku/gamecenter/adapter/PresentTotalListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/gamecenter/adapter/PresentTotalListAdapter;->notifyDataSetChanged()V

    .line 180
    return-void
.end method
