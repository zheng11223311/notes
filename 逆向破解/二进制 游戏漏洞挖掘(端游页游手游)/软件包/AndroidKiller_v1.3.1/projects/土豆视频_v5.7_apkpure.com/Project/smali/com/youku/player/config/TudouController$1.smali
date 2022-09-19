.class Lcom/youku/player/config/TudouController$1;
.super Ljava/lang/Object;
.source "TudouController.java"

# interfaces
.implements Lcom/youku/player/ui/widget/TudouEncryptDialog$OnPositiveClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/player/config/TudouController;->createEncryptDialog(Landroid/content/Context;Lcom/youku/player/plugin/MediaPlayerDelegate;)Lcom/youku/player/ui/widget/TudouEncryptDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/player/config/TudouController;

.field final synthetic val$mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;


# direct methods
.method constructor <init>(Lcom/youku/player/config/TudouController;Lcom/youku/player/plugin/MediaPlayerDelegate;)V
    .locals 0

    .prologue
    .line 237
    iput-object p1, p0, Lcom/youku/player/config/TudouController$1;->this$0:Lcom/youku/player/config/TudouController;

    iput-object p2, p0, Lcom/youku/player/config/TudouController$1;->val$mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Ljava/lang/String;)V
    .locals 2
    .param p1, "passWord"    # Ljava/lang/String;

    .prologue
    .line 240
    iget-object v0, p0, Lcom/youku/player/config/TudouController$1;->this$0:Lcom/youku/player/config/TudouController;

    iget-object v1, p0, Lcom/youku/player/config/TudouController$1;->val$mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0, v1, p1}, Lcom/youku/player/config/TudouController;->playVideoWithPassword(Lcom/youku/player/plugin/MediaPlayerDelegate;Ljava/lang/String;)V

    .line 241
    return-void
.end method
