.class public Lcom/youku/gamecenter/widgets/GameCardView$MyClickListener;
.super Ljava/lang/Object;
.source "GameCardView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/gamecenter/widgets/GameCardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/gamecenter/widgets/GameCardView;


# direct methods
.method public constructor <init>(Lcom/youku/gamecenter/widgets/GameCardView;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/youku/gamecenter/widgets/GameCardView$MyClickListener;->this$0:Lcom/youku/gamecenter/widgets/GameCardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/GameCardView$MyClickListener;->this$0:Lcom/youku/gamecenter/widgets/GameCardView;

    invoke-static {v0}, Lcom/youku/gamecenter/widgets/GameCardView;->access$000(Lcom/youku/gamecenter/widgets/GameCardView;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 89
    :goto_0
    return-void

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/GameCardView$MyClickListener;->this$0:Lcom/youku/gamecenter/widgets/GameCardView;

    invoke-virtual {v0}, Lcom/youku/gamecenter/widgets/GameCardView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/gamecenter/widgets/GameCardView$MyClickListener;->this$0:Lcom/youku/gamecenter/widgets/GameCardView;

    invoke-static {v1}, Lcom/youku/gamecenter/widgets/GameCardView;->access$000(Lcom/youku/gamecenter/widgets/GameCardView;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/gamecenter/util/AppClickActionUtils;->launchVideoDetailPage(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method
