#ifndef BITMANIPULATION_H_
#define BITMANIPULATION_H_
// Filename: bitmanipulation.h
// Autor: Lukas von D�niken
// Datum: 08.04.2016
// Beschreibung: Dieses Modul soll un�bersichtliche Bitmanipulationen in anderen Sourcecodes ersetzten
// set bit
//inline void BIT_SET(volatile uint8_t *target, uint8_t bit) __attribute__((always_inline));
inline void BIT_SET(volatile uint8_t *target, uint8_t bit)
{
	*target |= (1<<bit);
};

// set clear
//inline void BIT_CLEAR(volatile uint8_t *target, uint8_t bit) __attribute__((always_inline));
inline void BIT_CLEAR(volatile uint8_t *target, uint8_t bit)
{
	*target &= ~(1<<bit);
};

// bit toogle
//inline void BIT_TOGGLE(volatile uint8_t *target, uint8_t bit) __attribute__((always_inline));
inline void BIT_TOGGLE(volatile uint8_t *target, uint8_t bit)
{
	*target ^= (1<<bit);
};

// check if bit is set
//inline uint8_t BIT_IS_SET(volatile uint8_t target, uint8_t bit) __attribute__((always_inline));
inline uint8_t BIT_IS_SET(volatile uint8_t target, uint8_t bit)
{
	target &= (1 << bit);
  return target >>= bit;
};
#endif /* BITMANIPULATION_H_*/
