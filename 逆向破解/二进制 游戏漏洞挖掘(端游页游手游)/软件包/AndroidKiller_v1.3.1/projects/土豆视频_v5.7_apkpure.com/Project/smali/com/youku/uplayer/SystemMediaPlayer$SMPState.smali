.class Lcom/youku/uplayer/SystemMediaPlayer$SMPState;
.super Ljava/lang/Object;
.source "SystemMediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/uplayer/SystemMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SMPState"
.end annotation


# static fields
.field public static final CHANGING_VIDEO:I = 0x1

.field public static final NORMAL:I


# instance fields
.field final synthetic this$0:Lcom/youku/uplayer/SystemMediaPlayer;


# direct methods
.method private constructor <init>(Lcom/youku/uplayer/SystemMediaPlayer;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/youku/uplayer/SystemMediaPlayer$SMPState;->this$0:Lcom/youku/uplayer/SystemMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
