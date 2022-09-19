.class Lcom/youku/uplayer/MediaPlayerProxy$23;
.super Ljava/lang/Object;
.source "MediaPlayerProxy.java"

# interfaces
.implements Lcom/youku/uplayer/OnQualityChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/uplayer/MediaPlayerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/uplayer/MediaPlayerProxy;


# direct methods
.method constructor <init>(Lcom/youku/uplayer/MediaPlayerProxy;)V
    .locals 0

    .prologue
    .line 1097
    iput-object p1, p0, Lcom/youku/uplayer/MediaPlayerProxy$23;->this$0:Lcom/youku/uplayer/MediaPlayerProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQualityChangeSuccess()V
    .locals 0

    .prologue
    .line 1099
    return-void
.end method

.method public onQualitySmoothChangeFail()V
    .locals 0

    .prologue
    .line 1102
    return-void
.end method
