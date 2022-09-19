.class final Lcom/youku/player/unicom/ChinaUnicomFreeFlowUtil$1;
.super Ljava/lang/Object;
.source "ChinaUnicomFreeFlowUtil.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/player/unicom/ChinaUnicomFreeFlowUtil;->showChinaUnicomTransformFailedDialog(Landroid/app/Activity;Lcom/youku/player/plugin/MediaPlayerDelegate;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

.field final synthetic val$unicomAlertDialog:Lcom/youku/player/unicom/ChinaUnicomAlertDialog;


# direct methods
.method constructor <init>(Lcom/youku/player/unicom/ChinaUnicomAlertDialog;Lcom/youku/player/plugin/MediaPlayerDelegate;)V
    .locals 0

    .prologue
    .line 193
    iput-object p1, p0, Lcom/youku/player/unicom/ChinaUnicomFreeFlowUtil$1;->val$unicomAlertDialog:Lcom/youku/player/unicom/ChinaUnicomAlertDialog;

    iput-object p2, p0, Lcom/youku/player/unicom/ChinaUnicomFreeFlowUtil$1;->val$mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x1

    .line 196
    sput-boolean v0, Lcom/youku/player/unicom/ChinaUnicomFreeFlowUtil;->isAlertDialogShown:Z

    .line 197
    sput-boolean v0, Lcom/youku/player/unicom/ChinaUnicomFreeFlowUtil;->isFirstShow:Z

    .line 198
    iget-object v0, p0, Lcom/youku/player/unicom/ChinaUnicomFreeFlowUtil$1;->val$unicomAlertDialog:Lcom/youku/player/unicom/ChinaUnicomAlertDialog;

    invoke-virtual {v0}, Lcom/youku/player/unicom/ChinaUnicomAlertDialog;->dismiss()V

    .line 199
    iget-object v0, p0, Lcom/youku/player/unicom/ChinaUnicomFreeFlowUtil$1;->val$mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->start()V

    .line 201
    return-void
.end method
