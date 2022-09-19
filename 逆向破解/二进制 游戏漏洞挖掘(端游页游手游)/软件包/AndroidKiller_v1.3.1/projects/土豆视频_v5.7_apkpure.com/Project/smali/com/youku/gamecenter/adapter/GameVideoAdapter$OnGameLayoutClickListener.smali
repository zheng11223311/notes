.class Lcom/youku/gamecenter/adapter/GameVideoAdapter$OnGameLayoutClickListener;
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
    name = "OnGameLayoutClickListener"
.end annotation


# instance fields
.field info:Lcom/youku/gamecenter/data/GameInfo;

.field position:I

.field final synthetic this$0:Lcom/youku/gamecenter/adapter/GameVideoAdapter;


# direct methods
.method public constructor <init>(Lcom/youku/gamecenter/adapter/GameVideoAdapter;ILcom/youku/gamecenter/data/GameInfo;)V
    .locals 0
    .param p2, "position"    # I
    .param p3, "info"    # Lcom/youku/gamecenter/data/GameInfo;

    .prologue
    .line 144
    iput-object p1, p0, Lcom/youku/gamecenter/adapter/GameVideoAdapter$OnGameLayoutClickListener;->this$0:Lcom/youku/gamecenter/adapter/GameVideoAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    iput p2, p0, Lcom/youku/gamecenter/adapter/GameVideoAdapter$OnGameLayoutClickListener;->position:I

    .line 146
    iput-object p3, p0, Lcom/youku/gamecenter/adapter/GameVideoAdapter$OnGameLayoutClickListener;->info:Lcom/youku/gamecenter/data/GameInfo;

    .line 147
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/youku/gamecenter/adapter/GameVideoAdapter$OnGameLayoutClickListener;->this$0:Lcom/youku/gamecenter/adapter/GameVideoAdapter;

    invoke-static {v0}, Lcom/youku/gamecenter/adapter/GameVideoAdapter;->access$000(Lcom/youku/gamecenter/adapter/GameVideoAdapter;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/gamecenter/adapter/GameVideoAdapter$OnGameLayoutClickListener;->info:Lcom/youku/gamecenter/data/GameInfo;

    iget-object v1, v1, Lcom/youku/gamecenter/data/GameInfo;->id:Ljava/lang/String;

    iget-object v2, p0, Lcom/youku/gamecenter/adapter/GameVideoAdapter$OnGameLayoutClickListener;->this$0:Lcom/youku/gamecenter/adapter/GameVideoAdapter;

    invoke-static {v2}, Lcom/youku/gamecenter/adapter/GameVideoAdapter;->access$100(Lcom/youku/gamecenter/adapter/GameVideoAdapter;)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/youku/gamecenter/adapter/GameVideoAdapter$OnGameLayoutClickListener;->position:I

    invoke-static {v0, v1, v2, v3}, Lcom/youku/gamecenter/util/AppClickActionUtils;->launchGameDetailsActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 152
    return-void
.end method
