.class public Lcom/android/internal/telephony/cat/BearerDescription;
.super Ljava/lang/Object;
.source "BearerDescription.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cat/BearerDescription$BearerType;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/telephony/cat/BearerDescription;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public parameters:[B

.field public type:Lcom/android/internal/telephony/cat/BearerDescription$BearerType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 78
    new-instance v0, Lcom/android/internal/telephony/cat/BearerDescription$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/cat/BearerDescription$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/cat/BearerDescription;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .parameter "in"

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v1, 0x0

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/android/internal/telephony/cat/BearerDescription;->parameters:[B

    .line 58
    invoke-static {}, Lcom/android/internal/telephony/cat/BearerDescription$BearerType;->values()[Lcom/android/internal/telephony/cat/BearerDescription$BearerType;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/android/internal/telephony/cat/BearerDescription;->type:Lcom/android/internal/telephony/cat/BearerDescription$BearerType;

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 60
    .local v0, len:I
    if-lez v0, :cond_0

    .line 61
    new-array v1, v0, [B

    iput-object v1, p0, Lcom/android/internal/telephony/cat/BearerDescription;->parameters:[B

    .line 62
    iget-object v1, p0, Lcom/android/internal/telephony/cat/BearerDescription;->parameters:[B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readByteArray([B)V

    .line 64
    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/internal/telephony/cat/BearerDescription$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/BearerDescription;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/cat/BearerDescription$BearerType;[B)V
    .locals 1
    .parameter "type"
    .parameter "parameters"

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/telephony/cat/BearerDescription;->parameters:[B

    .line 53
    iput-object p1, p0, Lcom/android/internal/telephony/cat/BearerDescription;->type:Lcom/android/internal/telephony/cat/BearerDescription$BearerType;

    .line 54
    iput-object p2, p0, Lcom/android/internal/telephony/cat/BearerDescription;->parameters:[B

    .line 55
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BearerDescription;->type:Lcom/android/internal/telephony/cat/BearerDescription$BearerType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 68
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BearerDescription;->parameters:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 69
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BearerDescription;->parameters:[B

    array-length v0, v0

    if-lez v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BearerDescription;->parameters:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 72
    :cond_0
    return-void
.end method
