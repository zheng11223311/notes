.class final Lcom/youku/gamecenter/util/UIUtils$2;
.super Ljava/lang/Object;
.source "UIUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/gamecenter/util/UIUtils;->showDwonloadContinueOrNotDialog(Landroid/content/Context;Landroid/widget/ImageView;Lcom/youku/gamecenter/data/GameInfo;Ljava/lang/String;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$icon:Landroid/widget/ImageView;

.field final synthetic val$info:Lcom/youku/gamecenter/data/GameInfo;

.field final synthetic val$locationid:I

.field final synthetic val$source:Ljava/lang/String;

.field final synthetic val$statistics:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/youku/gamecenter/data/GameInfo;Ljava/lang/String;ILjava/lang/String;Landroid/widget/ImageView;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/youku/gamecenter/util/UIUtils$2;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/youku/gamecenter/util/UIUtils$2;->val$info:Lcom/youku/gamecenter/data/GameInfo;

    iput-object p3, p0, Lcom/youku/gamecenter/util/UIUtils$2;->val$source:Ljava/lang/String;

    iput p4, p0, Lcom/youku/gamecenter/util/UIUtils$2;->val$locationid:I

    iput-object p5, p0, Lcom/youku/gamecenter/util/UIUtils$2;->val$statistics:Ljava/lang/String;

    iput-object p6, p0, Lcom/youku/gamecenter/util/UIUtils$2;->val$icon:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 88
    iget-object v0, p0, Lcom/youku/gamecenter/util/UIUtils$2;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/youku/gamecenter/util/UIUtils$2;->val$info:Lcom/youku/gamecenter/data/GameInfo;

    iget-object v2, p0, Lcom/youku/gamecenter/util/UIUtils$2;->val$source:Ljava/lang/String;

    iget v3, p0, Lcom/youku/gamecenter/util/UIUtils$2;->val$locationid:I

    iget-object v4, p0, Lcom/youku/gamecenter/util/UIUtils$2;->val$statistics:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-static/range {v0 .. v5}, Lcom/youku/gamecenter/util/ClickActionUtils;->handleGameAction(Landroid/content/Context;Lcom/youku/gamecenter/data/GameInfo;Ljava/lang/String;ILjava/lang/String;Z)V

    .line 89
    iget-object v0, p0, Lcom/youku/gamecenter/util/UIUtils$2;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/youku/gamecenter/util/UIUtils$2;->val$icon:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/youku/gamecenter/util/UIUtils;->startAnimation(Landroid/content/Context;Landroid/widget/ImageView;)V

    .line 91
    return-void
.end method
