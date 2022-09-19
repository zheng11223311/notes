.class Lcom/youku/gamecenter/adapter/GameVideoAdapter$OnImagePlayClickListener;
.super Ljava/lang/Object;
.source "GameVideoAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/gamecenter/adapter/GameVideoAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnImagePlayClickListener"
.end annotation


# instance fields
.field info:Lcom/youku/gamecenter/data/GameCenterVideoInfo;

.field final synthetic this$0:Lcom/youku/gamecenter/adapter/GameVideoAdapter;


# direct methods
.method public constructor <init>(Lcom/youku/gamecenter/adapter/GameVideoAdapter;Lcom/youku/gamecenter/data/GameCenterVideoInfo;)V
    .locals 0
    .param p2, "info"    # Lcom/youku/gamecenter/data/GameCenterVideoInfo;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/youku/gamecenter/adapter/GameVideoAdapter$OnImagePlayClickListener;->this$0:Lcom/youku/gamecenter/adapter/GameVideoAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    iput-object p2, p0, Lcom/youku/gamecenter/adapter/GameVideoAdapter$OnImagePlayClickListener;->info:Lcom/youku/gamecenter/data/GameCenterVideoInfo;

    .line 132
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/youku/gamecenter/adapter/GameVideoAdapter$OnImagePlayClickListener;->this$0:Lcom/youku/gamecenter/adapter/GameVideoAdapter;

    invoke-static {v0}, Lcom/youku/gamecenter/adapter/GameVideoAdapter;->access$000(Lcom/youku/gamecenter/adapter/GameVideoAdapter;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/gamecenter/adapter/GameVideoAdapter$OnImagePlayClickListener;->info:Lcom/youku/gamecenter/data/GameCenterVideoInfo;

    iget-object v1, v1, Lcom/youku/gamecenter/data/GameCenterVideoInfo;->vid:Ljava/lang/String;

    iget-object v2, p0, Lcom/youku/gamecenter/adapter/GameVideoAdapter$OnImagePlayClickListener;->info:Lcom/youku/gamecenter/data/GameCenterVideoInfo;

    iget v2, v2, Lcom/youku/gamecenter/data/GameCenterVideoInfo;->type:I

    iget-object v3, p0, Lcom/youku/gamecenter/adapter/GameVideoAdapter$OnImagePlayClickListener;->info:Lcom/youku/gamecenter/data/GameCenterVideoInfo;

    iget-object v3, v3, Lcom/youku/gamecenter/data/GameCenterVideoInfo;->gameInfo:Lcom/youku/gamecenter/data/GameInfo;

    iget-object v3, v3, Lcom/youku/gamecenter/data/GameInfo;->packagename:Ljava/lang/String;

    iget-object v4, p0, Lcom/youku/gamecenter/adapter/GameVideoAdapter$OnImagePlayClickListener;->info:Lcom/youku/gamecenter/data/GameCenterVideoInfo;

    iget-object v4, v4, Lcom/youku/gamecenter/data/GameCenterVideoInfo;->title:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/youku/gamecenter/util/AppClickActionUtils;->launchGameVideoActivity(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 137
    return-void
.end method
