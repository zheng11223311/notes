.class public Lde/keyboardsurfer/android/widget/crouton/Configuration$Builder;
.super Ljava/lang/Object;
.source "Configuration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/keyboardsurfer/android/widget/crouton/Configuration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private durationInMilliseconds:I

.field private inAnimationResId:I

.field private outAnimationResId:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const/16 v0, 0xbb8

    iput v0, p0, Lde/keyboardsurfer/android/widget/crouton/Configuration$Builder;->durationInMilliseconds:I

    .line 64
    iput v1, p0, Lde/keyboardsurfer/android/widget/crouton/Configuration$Builder;->inAnimationResId:I

    .line 65
    iput v1, p0, Lde/keyboardsurfer/android/widget/crouton/Configuration$Builder;->outAnimationResId:I

    return-void
.end method

.method static synthetic access$000(Lde/keyboardsurfer/android/widget/crouton/Configuration$Builder;)I
    .locals 1
    .param p0, "x0"    # Lde/keyboardsurfer/android/widget/crouton/Configuration$Builder;

    .prologue
    .line 62
    iget v0, p0, Lde/keyboardsurfer/android/widget/crouton/Configuration$Builder;->durationInMilliseconds:I

    return v0
.end method

.method static synthetic access$100(Lde/keyboardsurfer/android/widget/crouton/Configuration$Builder;)I
    .locals 1
    .param p0, "x0"    # Lde/keyboardsurfer/android/widget/crouton/Configuration$Builder;

    .prologue
    .line 62
    iget v0, p0, Lde/keyboardsurfer/android/widget/crouton/Configuration$Builder;->inAnimationResId:I

    return v0
.end method

.method static synthetic access$200(Lde/keyboardsurfer/android/widget/crouton/Configuration$Builder;)I
    .locals 1
    .param p0, "x0"    # Lde/keyboardsurfer/android/widget/crouton/Configuration$Builder;

    .prologue
    .line 62
    iget v0, p0, Lde/keyboardsurfer/android/widget/crouton/Configuration$Builder;->outAnimationResId:I

    return v0
.end method


# virtual methods
.method public build()Lde/keyboardsurfer/android/widget/crouton/Configuration;
    .locals 2

    .prologue
    .line 118
    new-instance v0, Lde/keyboardsurfer/android/widget/crouton/Configuration;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lde/keyboardsurfer/android/widget/crouton/Configuration;-><init>(Lde/keyboardsurfer/android/widget/crouton/Configuration$Builder;Lde/keyboardsurfer/android/widget/crouton/Configuration$1;)V

    return-object v0
.end method

.method public setDuration(I)Lde/keyboardsurfer/android/widget/crouton/Configuration$Builder;
    .locals 0
    .param p1, "duration"    # I

    .prologue
    .line 77
    iput p1, p0, Lde/keyboardsurfer/android/widget/crouton/Configuration$Builder;->durationInMilliseconds:I

    .line 79
    return-object p0
.end method

.method public setInAnimation(I)Lde/keyboardsurfer/android/widget/crouton/Configuration$Builder;
    .locals 0
    .param p1, "inAnimationResId"    # I

    .prologue
    .line 92
    iput p1, p0, Lde/keyboardsurfer/android/widget/crouton/Configuration$Builder;->inAnimationResId:I

    .line 94
    return-object p0
.end method

.method public setOutAnimation(I)Lde/keyboardsurfer/android/widget/crouton/Configuration$Builder;
    .locals 0
    .param p1, "outAnimationResId"    # I

    .prologue
    .line 107
    iput p1, p0, Lde/keyboardsurfer/android/widget/crouton/Configuration$Builder;->outAnimationResId:I

    .line 109
    return-object p0
.end method
