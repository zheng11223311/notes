.class public Lcom/youdo/controller/MraidController$ExpandProperties;
.super Lcom/youdo/controller/MraidController$ReflectedParcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youdo/controller/MraidController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExpandProperties"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/youdo/controller/MraidController$ExpandProperties;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public backgroundColor:I

.field public backgroundOpacity:F

.field public height:I

.field public isModal:Z

.field public lockOrientation:Z

.field public useBackground:Z

.field public useCustomClose:Z

.field public width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/youdo/controller/MraidController$ExpandProperties$1;

    invoke-direct {v0}, Lcom/youdo/controller/MraidController$ExpandProperties$1;-><init>()V

    sput-object v0, Lcom/youdo/controller/MraidController$ExpandProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/youdo/controller/MraidController$ReflectedParcelable;-><init>()V

    iput v0, p0, Lcom/youdo/controller/MraidController$ExpandProperties;->width:I

    iput v0, p0, Lcom/youdo/controller/MraidController$ExpandProperties;->height:I

    iput-boolean v1, p0, Lcom/youdo/controller/MraidController$ExpandProperties;->useBackground:Z

    iput v1, p0, Lcom/youdo/controller/MraidController$ExpandProperties;->backgroundColor:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/youdo/controller/MraidController$ExpandProperties;->backgroundOpacity:F

    iput-boolean v1, p0, Lcom/youdo/controller/MraidController$ExpandProperties;->lockOrientation:Z

    iput-boolean v1, p0, Lcom/youdo/controller/MraidController$ExpandProperties;->useCustomClose:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youdo/controller/MraidController$ExpandProperties;->isModal:Z

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/youdo/controller/MraidController$ReflectedParcelable;-><init>(Landroid/os/Parcel;)V

    return-void
.end method
