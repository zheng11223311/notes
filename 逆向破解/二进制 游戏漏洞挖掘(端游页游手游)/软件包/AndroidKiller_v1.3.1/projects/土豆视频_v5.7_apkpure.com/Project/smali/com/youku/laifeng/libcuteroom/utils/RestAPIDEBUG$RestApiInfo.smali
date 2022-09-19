.class public Lcom/youku/laifeng/libcuteroom/utils/RestAPIDEBUG$RestApiInfo;
.super Ljava/lang/Object;
.source "RestAPIDEBUG.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/laifeng/libcuteroom/utils/RestAPIDEBUG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RestApiInfo"
.end annotation


# instance fields
.field public BASE:Ljava/lang/String;

.field public IS_DEBUG:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "BASE"    # Ljava/lang/String;
    .param p2, "captcha"    # Ljava/lang/String;
    .param p3, "IS_DEBUG"    # Z

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/youku/laifeng/libcuteroom/utils/RestAPIDEBUG$RestApiInfo;->BASE:Ljava/lang/String;

    .line 52
    iput-boolean p3, p0, Lcom/youku/laifeng/libcuteroom/utils/RestAPIDEBUG$RestApiInfo;->IS_DEBUG:Z

    .line 53
    return-void
.end method
