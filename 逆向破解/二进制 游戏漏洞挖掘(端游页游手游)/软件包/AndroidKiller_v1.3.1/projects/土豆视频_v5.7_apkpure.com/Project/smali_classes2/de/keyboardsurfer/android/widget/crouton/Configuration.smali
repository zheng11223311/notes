.class public Lde/keyboardsurfer/android/widget/crouton/Configuration;
.super Ljava/lang/Object;
.source "Configuration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde/keyboardsurfer/android/widget/crouton/Configuration$1;,
        Lde/keyboardsurfer/android/widget/crouton/Configuration$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT:Lde/keyboardsurfer/android/widget/crouton/Configuration;

.field public static final DURATION_INFINITE:I = -0x1

.field public static final DURATION_LONG:I = 0x1388

.field public static final DURATION_SHORT:I = 0xbb8


# instance fields
.field final durationInMilliseconds:I

.field final inAnimationResId:I

.field final outAnimationResId:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 45
    new-instance v0, Lde/keyboardsurfer/android/widget/crouton/Configuration$Builder;

    invoke-direct {v0}, Lde/keyboardsurfer/android/widget/crouton/Configuration$Builder;-><init>()V

    const/16 v1, 0xbb8

    invoke-virtual {v0, v1}, Lde/keyboardsurfer/android/widget/crouton/Configuration$Builder;->setDuration(I)Lde/keyboardsurfer/android/widget/crouton/Configuration$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lde/keyboardsurfer/android/widget/crouton/Configuration$Builder;->build()Lde/keyboardsurfer/android/widget/crouton/Configuration;

    move-result-object v0

    sput-object v0, Lde/keyboardsurfer/android/widget/crouton/Configuration;->DEFAULT:Lde/keyboardsurfer/android/widget/crouton/Configuration;

    .line 46
    return-void
.end method

.method private constructor <init>(Lde/keyboardsurfer/android/widget/crouton/Configuration$Builder;)V
    .locals 1
    .param p1, "builder"    # Lde/keyboardsurfer/android/widget/crouton/Configuration$Builder;

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    invoke-static {p1}, Lde/keyboardsurfer/android/widget/crouton/Configuration$Builder;->access$000(Lde/keyboardsurfer/android/widget/crouton/Configuration$Builder;)I

    move-result v0

    iput v0, p0, Lde/keyboardsurfer/android/widget/crouton/Configuration;->durationInMilliseconds:I

    .line 57
    invoke-static {p1}, Lde/keyboardsurfer/android/widget/crouton/Configuration$Builder;->access$100(Lde/keyboardsurfer/android/widget/crouton/Configuration$Builder;)I

    move-result v0

    iput v0, p0, Lde/keyboardsurfer/android/widget/crouton/Configuration;->inAnimationResId:I

    .line 58
    invoke-static {p1}, Lde/keyboardsurfer/android/widget/crouton/Configuration$Builder;->access$200(Lde/keyboardsurfer/android/widget/crouton/Configuration$Builder;)I

    move-result v0

    iput v0, p0, Lde/keyboardsurfer/android/widget/crouton/Configuration;->outAnimationResId:I

    .line 59
    return-void
.end method

.method synthetic constructor <init>(Lde/keyboardsurfer/android/widget/crouton/Configuration$Builder;Lde/keyboardsurfer/android/widget/crouton/Configuration$1;)V
    .locals 0
    .param p1, "x0"    # Lde/keyboardsurfer/android/widget/crouton/Configuration$Builder;
    .param p2, "x1"    # Lde/keyboardsurfer/android/widget/crouton/Configuration$1;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lde/keyboardsurfer/android/widget/crouton/Configuration;-><init>(Lde/keyboardsurfer/android/widget/crouton/Configuration$Builder;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Configuration{durationInMilliseconds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lde/keyboardsurfer/android/widget/crouton/Configuration;->durationInMilliseconds:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", inAnimationResId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lde/keyboardsurfer/android/widget/crouton/Configuration;->inAnimationResId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", outAnimationResId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lde/keyboardsurfer/android/widget/crouton/Configuration;->outAnimationResId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
