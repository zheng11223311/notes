.class public Lcom/alipay/android/app/empty/RuntimeEvent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private a:Lcom/alipay/android/app/empty/e;

.field private b:J

.field private c:J

.field private d:I

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 129
    new-instance v0, Lcom/alipay/android/app/empty/f;

    invoke-direct {v0}, Lcom/alipay/android/app/empty/f;-><init>()V

    sput-object v0, Lcom/alipay/android/app/empty/RuntimeEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    sget-object v0, Lcom/alipay/android/app/empty/e;->a:Lcom/alipay/android/app/empty/e;

    iput-object v0, p0, Lcom/alipay/android/app/empty/RuntimeEvent;->a:Lcom/alipay/android/app/empty/e;

    .line 27
    iput-wide v4, p0, Lcom/alipay/android/app/empty/RuntimeEvent;->b:J

    .line 28
    iput-wide v4, p0, Lcom/alipay/android/app/empty/RuntimeEvent;->c:J

    .line 29
    iput v1, p0, Lcom/alipay/android/app/empty/RuntimeEvent;->d:I

    .line 30
    iput-object v2, p0, Lcom/alipay/android/app/empty/RuntimeEvent;->e:Ljava/lang/String;

    .line 31
    iput-object v2, p0, Lcom/alipay/android/app/empty/RuntimeEvent;->f:Ljava/lang/String;

    .line 32
    iput v1, p0, Lcom/alipay/android/app/empty/RuntimeEvent;->g:I

    .line 33
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Lcom/alipay/android/app/empty/e;->a(I)Lcom/alipay/android/app/empty/e;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/empty/RuntimeEvent;->a:Lcom/alipay/android/app/empty/e;

    .line 141
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/android/app/empty/RuntimeEvent;->b:J

    .line 142
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/android/app/empty/RuntimeEvent;->c:J

    .line 143
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alipay/android/app/empty/RuntimeEvent;->d:I

    .line 144
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/empty/RuntimeEvent;->e:Ljava/lang/String;

    .line 145
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/empty/RuntimeEvent;->f:Ljava/lang/String;

    .line 146
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alipay/android/app/empty/RuntimeEvent;->g:I

    .line 147
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/alipay/android/app/empty/f;)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/alipay/android/app/empty/RuntimeEvent;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/alipay/android/app/empty/e;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/alipay/android/app/empty/RuntimeEvent;->a:Lcom/alipay/android/app/empty/e;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 64
    iput p1, p0, Lcom/alipay/android/app/empty/RuntimeEvent;->d:I

    .line 65
    return-void
.end method

.method public a(J)V
    .locals 1

    .prologue
    .line 48
    iput-wide p1, p0, Lcom/alipay/android/app/empty/RuntimeEvent;->b:J

    .line 49
    return-void
.end method

.method public a(Lcom/alipay/android/app/empty/e;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/alipay/android/app/empty/RuntimeEvent;->a:Lcom/alipay/android/app/empty/e;

    .line 41
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/alipay/android/app/empty/RuntimeEvent;->e:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public b()J
    .locals 2

    .prologue
    .line 44
    iget-wide v0, p0, Lcom/alipay/android/app/empty/RuntimeEvent;->b:J

    return-wide v0
.end method

.method public b(I)V
    .locals 0

    .prologue
    .line 88
    iput p1, p0, Lcom/alipay/android/app/empty/RuntimeEvent;->g:I

    .line 89
    return-void
.end method

.method public b(J)V
    .locals 1

    .prologue
    .line 56
    iput-wide p1, p0, Lcom/alipay/android/app/empty/RuntimeEvent;->c:J

    .line 57
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/alipay/android/app/empty/RuntimeEvent;->f:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public c()J
    .locals 2

    .prologue
    .line 52
    iget-wide v0, p0, Lcom/alipay/android/app/empty/RuntimeEvent;->c:J

    return-wide v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/alipay/android/app/empty/RuntimeEvent;->d:I

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 110
    const/4 v0, 0x0

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/alipay/android/app/empty/RuntimeEvent;->e:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/alipay/android/app/empty/RuntimeEvent;->f:Ljava/lang/String;

    return-object v0
.end method

.method public g()I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lcom/alipay/android/app/empty/RuntimeEvent;->g:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/empty/RuntimeEvent;->a:Lcom/alipay/android/app/empty/e;

    invoke-virtual {v1}, Lcom/alipay/android/app/empty/e;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", startTime = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/alipay/android/app/empty/RuntimeEvent;->b:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms, elapse = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/alipay/android/app/empty/RuntimeEvent;->c:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms, bizId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/alipay/android/app/empty/RuntimeEvent;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", session = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/empty/RuntimeEvent;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/empty/RuntimeEvent;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", count = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/alipay/android/app/empty/RuntimeEvent;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/alipay/android/app/empty/RuntimeEvent;->a:Lcom/alipay/android/app/empty/e;

    invoke-virtual {v0}, Lcom/alipay/android/app/empty/e;->a()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 121
    iget-wide v0, p0, Lcom/alipay/android/app/empty/RuntimeEvent;->b:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 122
    iget-wide v0, p0, Lcom/alipay/android/app/empty/RuntimeEvent;->c:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 123
    iget v0, p0, Lcom/alipay/android/app/empty/RuntimeEvent;->d:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 124
    iget-object v0, p0, Lcom/alipay/android/app/empty/RuntimeEvent;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lcom/alipay/android/app/empty/RuntimeEvent;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 126
    iget v0, p0, Lcom/alipay/android/app/empty/RuntimeEvent;->g:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 127
    return-void
.end method
