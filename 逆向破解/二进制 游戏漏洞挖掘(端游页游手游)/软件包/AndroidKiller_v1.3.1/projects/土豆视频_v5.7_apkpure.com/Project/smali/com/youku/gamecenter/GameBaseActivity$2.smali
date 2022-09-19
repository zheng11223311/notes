.class Lcom/youku/gamecenter/GameBaseActivity$2;
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
    .line 163
    iput-object p1, p0, Lcom/youku/gamecenter/GameBaseActivity$2;->this$0:Lcom/youku/gamecenter/GameBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 167
    iget-object v0, p0, Lcom/youku/gamecenter/GameBaseActivity$2;->this$0:Lcom/youku/gamecenter/GameBaseActivity;

    invoke-virtual {v0}, Lcom/youku/gamecenter/GameBaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "gc_navigate|gc_download"

    const-string/jumbo v3, "\u4e0b\u8f7d\u7ba1\u7406\u6309\u94ae\u70b9\u51fb"

    const-string/jumbo v4, "\u5bfc\u822a\u680f"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/youku/gamecenter/statistics/GameAnalytics;->trackCustomClick(Landroid/content/Context;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    iget-object v0, p0, Lcom/youku/gamecenter/GameBaseActivity$2;->this$0:Lcom/youku/gamecenter/GameBaseActivity;

    invoke-static {v0}, Lcom/youku/gamecenter/util/AppClickActionUtils;->launchGameManagerActivity(Landroid/content/Context;)V

    .line 172
    return-void
.end method
