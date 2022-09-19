.class final Lcom/youku/player/unicom/ChinaUnicomFreeFlowUtil$2;
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
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$unicomAlertDialog:Lcom/youku/player/unicom/ChinaUnicomAlertDialog;


# direct methods
.method constructor <init>(Lcom/youku/player/unicom/ChinaUnicomAlertDialog;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 205
    iput-object p1, p0, Lcom/youku/player/unicom/ChinaUnicomFreeFlowUtil$2;->val$unicomAlertDialog:Lcom/youku/player/unicom/ChinaUnicomAlertDialog;

    iput-object p2, p0, Lcom/youku/player/unicom/ChinaUnicomFreeFlowUtil$2;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 208
    const/4 v0, 0x0

    sput-boolean v0, Lcom/youku/player/unicom/ChinaUnicomFreeFlowUtil;->isAlertDialogShown:Z

    .line 209
    const/4 v0, 0x1

    sput-boolean v0, Lcom/youku/player/unicom/ChinaUnicomFreeFlowUtil;->isFirstShow:Z

    .line 210
    iget-object v0, p0, Lcom/youku/player/unicom/ChinaUnicomFreeFlowUtil$2;->val$unicomAlertDialog:Lcom/youku/player/unicom/ChinaUnicomAlertDialog;

    invoke-virtual {v0}, Lcom/youku/player/unicom/ChinaUnicomAlertDialog;->dismiss()V

    .line 211
    iget-object v0, p0, Lcom/youku/player/unicom/ChinaUnicomFreeFlowUtil$2;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 212
    return-void
.end method
