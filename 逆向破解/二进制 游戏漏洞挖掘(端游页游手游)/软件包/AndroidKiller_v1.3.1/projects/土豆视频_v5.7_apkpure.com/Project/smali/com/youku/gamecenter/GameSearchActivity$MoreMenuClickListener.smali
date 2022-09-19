.class Lcom/youku/gamecenter/GameSearchActivity$MoreMenuClickListener;
.super Ljava/lang/Object;
.source "GameSearchActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/gamecenter/GameSearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MoreMenuClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/gamecenter/GameSearchActivity;


# direct methods
.method private constructor <init>(Lcom/youku/gamecenter/GameSearchActivity;)V
    .locals 0

    .prologue
    .line 298
    iput-object p1, p0, Lcom/youku/gamecenter/GameSearchActivity$MoreMenuClickListener;->this$0:Lcom/youku/gamecenter/GameSearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/youku/gamecenter/GameSearchActivity;Lcom/youku/gamecenter/GameSearchActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/youku/gamecenter/GameSearchActivity;
    .param p2, "x1"    # Lcom/youku/gamecenter/GameSearchActivity$1;

    .prologue
    .line 298
    invoke-direct {p0, p1}, Lcom/youku/gamecenter/GameSearchActivity$MoreMenuClickListener;-><init>(Lcom/youku/gamecenter/GameSearchActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 301
    iget-object v0, p0, Lcom/youku/gamecenter/GameSearchActivity$MoreMenuClickListener;->this$0:Lcom/youku/gamecenter/GameSearchActivity;

    invoke-virtual {v0}, Lcom/youku/gamecenter/GameSearchActivity;->isContextVaild()Z

    move-result v0

    if-nez v0, :cond_0

    .line 302
    const-string v0, "GameSearch"

    const-string v1, "GameSearchActivity->more menu onClick context empty return"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    :goto_0
    return-void

    .line 306
    :cond_0
    iget-object v0, p0, Lcom/youku/gamecenter/GameSearchActivity$MoreMenuClickListener;->this$0:Lcom/youku/gamecenter/GameSearchActivity;

    invoke-static {v0, p1}, Lcom/youku/gamecenter/GameSearchActivity;->access$300(Lcom/youku/gamecenter/GameSearchActivity;Landroid/view/View;)V

    goto :goto_0
.end method
