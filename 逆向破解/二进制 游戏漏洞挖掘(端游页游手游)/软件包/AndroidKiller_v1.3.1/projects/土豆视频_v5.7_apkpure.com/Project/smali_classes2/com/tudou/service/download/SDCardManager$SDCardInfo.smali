.class public Lcom/tudou/service/download/SDCardManager$SDCardInfo;
.super Ljava/lang/Object;
.source "SDCardManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/service/download/SDCardManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SDCardInfo"
.end annotation


# instance fields
.field public desc:Ljava/lang/String;

.field public descCurPath:Ljava/lang/String;

.field public isExternal:Z

.field public isSelected:Z

.field public path:Ljava/lang/String;

.field public userProgress:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 354
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
