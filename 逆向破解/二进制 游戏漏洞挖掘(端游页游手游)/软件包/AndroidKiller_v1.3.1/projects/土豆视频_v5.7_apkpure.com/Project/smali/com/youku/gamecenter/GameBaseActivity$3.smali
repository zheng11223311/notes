.class Lcom/youku/gamecenter/GameBaseActivity$3;
.super Ljava/lang/Object;
.source "GameBaseActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/gamecenter/GameBaseActivity;->setTitleBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/gamecenter/GameBaseActivity;


# direct methods
.method constructor <init>(Lcom/youku/gamecenter/GameBaseActivity;)V
    .locals 0

    .prologue
    .line 179
    iput-object p1, p0, Lcom/youku/gamecenter/GameBaseActivity$3;->this$0:Lcom/youku/gamecenter/GameBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 183
    iget-object v0, p0, Lcom/youku/gamecenter/GameBaseActivity$3;->this$0:Lcom/youku/gamecenter/GameBaseActivity;

    const-string v1, "3"

    invoke-static {v0, v1}, Lcom/youku/gamecenter/GameBaseActivity;->access$000(Lcom/youku/gamecenter/GameBaseActivity;Ljava/lang/String;)V

    .line 184
    iget-object v0, p0, Lcom/youku/gamecenter/GameBaseActivity$3;->this$0:Lcom/youku/gamecenter/GameBaseActivity;

    invoke-virtual {v0}, Lcom/youku/gamecenter/GameBaseActivity;->refreshPresentNewCount()V

    .line 185
    iget-object v0, p0, Lcom/youku/gamecenter/GameBaseActivity$3;->this$0:Lcom/youku/gamecenter/GameBaseActivity;

    invoke-static {v0}, Lcom/youku/gamecenter/util/AppClickActionUtils;->launchGamePresentActivity(Landroid/content/Context;)V

    .line 188
    return-void
.end method
