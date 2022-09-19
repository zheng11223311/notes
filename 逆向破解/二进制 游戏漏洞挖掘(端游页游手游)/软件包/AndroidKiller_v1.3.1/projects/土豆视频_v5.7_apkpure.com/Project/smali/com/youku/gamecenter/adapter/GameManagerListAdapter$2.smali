.class Lcom/youku/gamecenter/adapter/GameManagerListAdapter$2;
.super Ljava/lang/Object;
.source "GameManagerListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/gamecenter/adapter/GameManagerListAdapter;->onActionButtonClickListener(Lcom/youku/gamecenter/adapter/GameManagerListAdapter$ViewHolder;Lcom/youku/gamecenter/data/GameInfo;)Landroid/view/View$OnClickListener;
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
    .line 283
    iput-object p1, p0, Lcom/youku/gamecenter/adapter/GameManagerListAdapter$2;->this$0:Lcom/youku/gamecenter/adapter/GameManagerListAdapter;

    iput-object p2, p0, Lcom/youku/gamecenter/adapter/GameManagerListAdapter$2;->val$info:Lcom/youku/gamecenter/data/GameInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 288
    iget-object v0, p0, Lcom/youku/gamecenter/adapter/GameManagerListAdapter$2;->this$0:Lcom/youku/gamecenter/adapter/GameManagerListAdapter;

    iget-object v1, p0, Lcom/youku/gamecenter/adapter/GameManagerListAdapter$2;->val$info:Lcom/youku/gamecenter/data/GameInfo;

    iget-object v1, v1, Lcom/youku/gamecenter/data/GameInfo;->packagename:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/youku/gamecenter/adapter/GameManagerListAdapter;->access$100(Lcom/youku/gamecenter/adapter/GameManagerListAdapter;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/youku/gamecenter/adapter/GameManagerListAdapter$2;->this$0:Lcom/youku/gamecenter/adapter/GameManagerListAdapter;

    invoke-static {v0}, Lcom/youku/gamecenter/adapter/GameManagerListAdapter;->access$200(Lcom/youku/gamecenter/adapter/GameManagerListAdapter;)Lcom/youku/gamecenter/GameManagerActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/gamecenter/adapter/GameManagerListAdapter$2;->val$info:Lcom/youku/gamecenter/data/GameInfo;

    invoke-static {v0, v1}, Lcom/youku/gamecenter/util/ClickActionUtils;->handleGameLaunchAction(Landroid/content/Context;Lcom/youku/gamecenter/data/GameInfo;)V

    .line 293
    :goto_0
    return-void

    .line 292
    :cond_0
    iget-object v0, p0, Lcom/youku/gamecenter/adapter/GameManagerListAdapter$2;->this$0:Lcom/youku/gamecenter/adapter/GameManagerListAdapter;

    invoke-static {v0}, Lcom/youku/gamecenter/adapter/GameManagerListAdapter;->access$200(Lcom/youku/gamecenter/adapter/GameManagerListAdapter;)Lcom/youku/gamecenter/GameManagerActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/gamecenter/adapter/GameManagerListAdapter$2;->val$info:Lcom/youku/gamecenter/data/GameInfo;

    const-string v2, "19"

    const-string v4, ""

    move v5, v3

    invoke-static/range {v0 .. v5}, Lcom/youku/gamecenter/util/ClickActionUtils;->handleGameAction(Landroid/content/Context;Lcom/youku/gamecenter/data/GameInfo;Ljava/lang/String;ILjava/lang/String;Z)V

    goto :goto_0
.end method
