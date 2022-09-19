.class public Lcom/youku/gamecenter/data/MessageCenterGameInfo;
.super Ljava/lang/Object;
.source "MessageCenterGameInfo.java"


# static fields
.field public static final TYPE_LOCAL_GAME:I = 0x2

.field public static final TYPE_OPER_GAME:I = 0x0

.field public static final TYPE_OPER_H5:I = 0x1


# instance fields
.field public gameInfo:Lcom/youku/gamecenter/data/GameInfo;

.field public oper_type:I

.field public rec_img:Ljava/lang/String;

.field public rec_words:Ljava/lang/String;

.field public seq:I

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
