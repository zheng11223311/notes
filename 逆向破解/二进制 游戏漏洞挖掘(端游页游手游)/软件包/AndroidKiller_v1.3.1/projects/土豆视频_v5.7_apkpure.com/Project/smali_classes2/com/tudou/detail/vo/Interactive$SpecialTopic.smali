.class public Lcom/tudou/detail/vo/Interactive$SpecialTopic;
.super Ljava/lang/Object;
.source "Interactive.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/detail/vo/Interactive;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SpecialTopic"
.end annotation


# instance fields
.field public mContentImage:Ljava/lang/String;

.field public mSkipInfo:Lcom/youku/vo/SkipInfo;

.field public mTitle:Ljava/lang/String;

.field public mTypeIcon:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
