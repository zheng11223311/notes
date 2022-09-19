.class public Lio/rong/push/PushConst$ObjectName;
.super Ljava/lang/Object;
.source "PushConst.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/push/PushConst;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ObjectName"
.end annotation


# static fields
.field public static final RC_OBJECT_VOIP_ACCEPT_MSG:Ljava/lang/String; = "RC:VoipAcceptMsg"

.field public static final RC_OBJECT_VOIP_CALL_MSG:Ljava/lang/String; = "RC:VoipCallMsg"

.field public static final RC_OBJECT_VOIP_FINISH_MSG:Ljava/lang/String; = "RC:VoipFinishMsg"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
