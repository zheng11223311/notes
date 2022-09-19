.class public Lorg/jbox2d/common/Settings;
.super Ljava/lang/Object;
.source "Settings.java"


# static fields
.field public static final EPSILON:F = 1.1920929E-7f

.field public static final angularSleepTolerance:F = 0.011111111f

.field public static final angularSlop:F = 0.03490659f

.field public static final contactBaumgarte:F = 0.2f

.field public static final lengthUnitsPerMeter:F = 1.0f

.field public static final linearSleepTolerance:F = 0.01f

.field public static final linearSlop:F = 0.005f

.field public static final massUnitsPerKilogram:F = 1.0f

.field public static final maxAngularCorrection:F = 0.13962635f

.field public static final maxAngularVelocity:F = 250.0f

.field public static final maxAngularVelocitySquared:F = 62500.0f

.field public static final maxLinearCorrection:F = 0.2f

.field public static final maxLinearVelocity:F = 200.0f

.field public static final maxLinearVelocitySquared:F = 40000.0f

.field public static final maxManifoldPoints:I = 0x2

.field public static final maxPairs:I = 0x4000

.field public static final maxPolygonVertices:I = 0x8

.field public static final maxProxies:I = 0x800

.field public static final maxShapesPerBody:I = 0x40

.field public static maxTOIContactsPerIsland:I = 0x0

.field public static final pi:F = 3.1415927f

.field public static final timeToSleep:F = 0.5f

.field public static final timeUnitsPerSecond:F = 1.0f

.field public static final toiSlop:F = 0.04f

.field public static final velocityThreshold:F = 1.0f


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 133
    const/16 v0, 0x20

    sput v0, Lorg/jbox2d/common/Settings;->maxTOIContactsPerIsland:I

    .line 30
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
