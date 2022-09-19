.class Lcom/youku/gamecenter/adapter/GameManagerListAdapter$1;
.super Ljava/lang/Object;
.source "GameManagerListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/gamecenter/adapter/GameManagerListAdapter;->onItemClickListener(ILcom/youku/gamecenter/data/GameInfo;)Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/gamecenter/adapter/GameManagerListAdapter;

.field final synthetic val$info:Lcom/youku/gamecenter/data/GameInfo;


# direct methods
.method constructor <init>(Lcom/youku/gamecenter/adapter/GameManagerListAdapter;Lcom/youku/gamecenter/data/GameInfo;)V
    .locals 0

    .prologue
    .line 272
    iput-object p1, p0, Lcom/youku/gamecenter/adapter/GameManagerListAdapter$1;->this$0:Lcom/youku/gamecenter/adapter/GameManagerListAdapter;

    iput-object p2, p0, Lcom/youku/gamecenter/adapter/GameManagerListAdapter$1;->val$info:Lcom/youku/gamecenter/data/GameInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 276
    iget-object v0, p0, Lcom/youku/gamecenter/adapter/GameManagerListAdapter$1;->this$0:Lcom/youku/gamecenter/adapter/GameManagerListAdapter;

    invoke-static {v0}, Lcom/youku/gamecenter/adapter/GameManagerListAdapter;->access$000(Lcom/youku/gamecenter/adapter/GameManagerListAdapter;)Lcom/youku/gamecenter/GameManagerFragment;

    move-result-object v0

    sget-object v1, Lcom/youku/gamecenter/widgets/ActionItem;->ACTION_INFO:Lcom/youku/gamecenter/widgets/ActionItem;

    iget-object v2, p0, Lcom/youku/gamecenter/adapter/GameManagerListAdapter$1;->val$info:Lcom/youku/gamecenter/data/GameInfo;

    invoke-virtual {v0, v1, v2}, Lcom/youku/gamecenter/GameManagerFragment;->handleActionButtonClick(Lcom/youku/gamecenter/widgets/ActionItem;Lcom/youku/gamecenter/data/GameInfo;)V

    .line 277
    return-void
.end method
