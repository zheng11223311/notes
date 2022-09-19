.class public Lio/rong/imkit/model/Event$VoiceInputOperationEvent;
.super Ljava/lang/Object;
.source "Event.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/imkit/model/Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VoiceInputOperationEvent"
.end annotation


# static fields
.field public static STATUS_DEFAULT:I

.field public static STATUS_INPUTING:I

.field public static STATUS_INPUT_COMPLETE:I


# instance fields
.field private status:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 587
    const/4 v0, -0x1

    sput v0, Lio/rong/imkit/model/Event$VoiceInputOperationEvent;->STATUS_DEFAULT:I

    .line 588
    const/4 v0, 0x0

    sput v0, Lio/rong/imkit/model/Event$VoiceInputOperationEvent;->STATUS_INPUTING:I

    .line 589
    const/4 v0, 0x1

    sput v0, Lio/rong/imkit/model/Event$VoiceInputOperationEvent;->STATUS_INPUT_COMPLETE:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "status"    # I

    .prologue
    .line 593
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 594
    invoke-virtual {p0, p1}, Lio/rong/imkit/model/Event$VoiceInputOperationEvent;->setStatus(I)V

    .line 595
    return-void
.end method

.method public static obtain(I)Lio/rong/imkit/model/Event$VoiceInputOperationEvent;
    .locals 1
    .param p0, "status"    # I

    .prologue
    .line 598
    new-instance v0, Lio/rong/imkit/model/Event$VoiceInputOperationEvent;

    invoke-direct {v0, p0}, Lio/rong/imkit/model/Event$VoiceInputOperationEvent;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public getStatus()I
    .locals 1

    .prologue
    .line 602
    iget v0, p0, Lio/rong/imkit/model/Event$VoiceInputOperationEvent;->status:I

    return v0
.end method

.method public setStatus(I)V
    .locals 0
    .param p1, "status"    # I

    .prologue
    .line 606
    iput p1, p0, Lio/rong/imkit/model/Event$VoiceInputOperationEvent;->status:I

    .line 607
    return-void
.end method
