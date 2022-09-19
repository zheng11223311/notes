.class Lcom/youku/gamecenter/GameVideoActivity$2;
.super Ljava/lang/Object;
.source "GameVideoActivity.java"

# interfaces
.implements Lcom/youku/gamecenter/player/GameVideoTopView$OnBackButtonClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/gamecenter/GameVideoActivity;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/gamecenter/GameVideoActivity;


# direct methods
.method constructor <init>(Lcom/youku/gamecenter/GameVideoActivity;)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lcom/youku/gamecenter/GameVideoActivity$2;->this$0:Lcom/youku/gamecenter/GameVideoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleBackClick()V
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/youku/gamecenter/GameVideoActivity$2;->this$0:Lcom/youku/gamecenter/GameVideoActivity;

    invoke-virtual {v0}, Lcom/youku/gamecenter/GameVideoActivity;->onBackPressed()V

    .line 148
    return-void
.end method
