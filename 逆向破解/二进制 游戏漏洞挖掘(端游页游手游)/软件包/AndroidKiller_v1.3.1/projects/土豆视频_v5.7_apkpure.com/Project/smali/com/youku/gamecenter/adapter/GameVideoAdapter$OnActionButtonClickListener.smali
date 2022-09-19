.class Lcom/youku/gamecenter/adapter/GameVideoAdapter$OnActionButtonClickListener;
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
    name = "OnActionButtonClickListener"
.end annotation


# instance fields
.field holder:Lcom/youku/gamecenter/adapter/GameVideoAdapter$ViewHolder;

.field info:Lcom/youku/gamecenter/data/GameInfo;

.field position:I

.field final synthetic this$0:Lcom/youku/gamecenter/adapter/GameVideoAdapter;


# direct methods
.method public constructor <init>(Lcom/youku/gamecenter/adapter/GameVideoAdapter;ILcom/youku/gamecenter/adapter/GameVideoAdapter$ViewHolder;Lcom/youku/gamecenter/data/GameInfo;)V
    .locals 0
    .param p2, "position"    # I
    .param p3, "holder"    # Lcom/youku/gamecenter/adapter/GameVideoAdapter$ViewHolder;
    .param p4, "info"    # Lcom/youku/gamecenter/data/GameInfo;

    .prologue
    .line 161
    iput-object p1, p0, Lcom/youku/gamecenter/adapter/GameVideoAdapter$OnActionButtonClickListener;->this$0:Lcom/youku/gamecenter/adapter/GameVideoAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    iput p2, p0, Lcom/youku/gamecenter/adapter/GameVideoAdapter$OnActionButtonClickListener;->position:I

    .line 163
    iput-object p3, p0, Lcom/youku/gamecenter/adapter/GameVideoAdapter$OnActionButtonClickListener;->holder:Lcom/youku/gamecenter/adapter/GameVideoAdapter$ViewHolder;

    .line 164
    iput-object p4, p0, Lcom/youku/gamecenter/adapter/GameVideoAdapter$OnActionButtonClickListener;->info:Lcom/youku/gamecenter/data/GameInfo;

    .line 165
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 169
    iget-object v0, p0, Lcom/youku/gamecenter/adapter/GameVideoAdapter$OnActionButtonClickListener;->this$0:Lcom/youku/gamecenter/adapter/GameVideoAdapter;

    invoke-static {v0}, Lcom/youku/gamecenter/adapter/GameVideoAdapter;->access$000(Lcom/youku/gamecenter/adapter/GameVideoAdapter;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/gamecenter/adapter/GameVideoAdapter$OnActionButtonClickListener;->holder:Lcom/youku/gamecenter/adapter/GameVideoAdapter$ViewHolder;

    iget-object v1, v1, Lcom/youku/gamecenter/adapter/GameVideoAdapter$ViewHolder;->gameIcon:Landroid/widget/ImageView;

    iget v2, p0, Lcom/youku/gamecenter/adapter/GameVideoAdapter$OnActionButtonClickListener;->position:I

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/youku/gamecenter/adapter/GameVideoAdapter$OnActionButtonClickListener;->info:Lcom/youku/gamecenter/data/GameInfo;

    iget-object v4, p0, Lcom/youku/gamecenter/adapter/GameVideoAdapter$OnActionButtonClickListener;->this$0:Lcom/youku/gamecenter/adapter/GameVideoAdapter;

    invoke-static {v4}, Lcom/youku/gamecenter/adapter/GameVideoAdapter;->access$100(Lcom/youku/gamecenter/adapter/GameVideoAdapter;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/youku/gamecenter/util/AppClickActionUtils;->handleDownloadAction(Landroid/content/Context;Landroid/widget/ImageView;ILcom/youku/gamecenter/data/GameInfo;Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    return-void
.end method
