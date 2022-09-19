.class Lcom/youku/uplayer/SystemMediaPlayer$PlayListItem;
.super Ljava/lang/Object;
.source "SystemMediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/uplayer/SystemMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PlayListItem"
.end annotation


# instance fields
.field public duration:I

.field public offset:I

.field final synthetic this$0:Lcom/youku/uplayer/SystemMediaPlayer;

.field public url:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/youku/uplayer/SystemMediaPlayer;)V
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/youku/uplayer/SystemMediaPlayer$PlayListItem;->this$0:Lcom/youku/uplayer/SystemMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
