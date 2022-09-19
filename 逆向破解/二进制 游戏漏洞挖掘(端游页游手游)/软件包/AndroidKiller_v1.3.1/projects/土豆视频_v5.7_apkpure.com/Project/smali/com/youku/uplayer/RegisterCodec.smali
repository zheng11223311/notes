.class public Lcom/youku/uplayer/RegisterCodec;
.super Ljava/lang/Object;
.source "RegisterCodec.java"


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    invoke-direct {p0}, Lcom/youku/uplayer/RegisterCodec;->native_avcodec_register_all()V

    .line 15
    invoke-direct {p0}, Lcom/youku/uplayer/RegisterCodec;->native_av_register_all()V

    .line 16
    return-void
.end method

.method private native native_av_register_all()V
.end method

.method private native native_avcodec_register_all()V
.end method
